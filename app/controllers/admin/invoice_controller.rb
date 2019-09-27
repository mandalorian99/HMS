# frozen_string_literal: true

module Admin
  # create a invoice for patient
  class InvoiceController < ApplicationController
    include Calculatable

    before_action :find_patient, only: [:create]
    before_action :invoice, only: [:create]
    before_action :find_invoice, only: %i[update_status show]

    def index
      @invoices = Invoice.page(params[:page]).per(5)
    end

    def create
      message = @invoice.errors[:base][0]
      if @invoice.errors.none?
        @patient.update(status: 'discharged')
        message = 'Patient discharged!!!'
      end
      redirect admin_manage_patient_path, message
    end

    def show
      respond_to do |format|
        format.html { render :show }
        format.pdf do
          render pdf: 'invoice.pdf',
                 template: 'admin/invoice/show.html.erb',
                 disposition: 'attachment' # download pdf option
        end
      end
    end

    def update_status
      @patient_invoice.update(status: :paid) if @patient_invoice.status != 'paid'
      respond_to do |format|
        format.html { redirect admin_invoice_index_path, 'success' }
      end
    end

    private

    def invoice_params
      params.require(:invoice).permit(
        :id, :patient_id, :transactionId,
        :amount, :status, :bill_date,
        :admit_on, :discharged, :days,
        :appointments,:ward_rate
      )
    end

    def invoice
      begin
        @invoice = @patient.create_invoice(
                  amount: calculate_bill(@patient), status: 'paid',
                  transactionId: SecureRandom.hex(10), bill_date: Date.current,
                  admit_on: @patient.admit_date, discharged: Date.current,
                  days: calculate_days(@patient), appointments: calculate_appointments(@patient),
                  ward_rate: ward_rate(@patient),
                  appointment_charge: calculate_appointments_charges(@patient)
                )
      rescue StandardError => e
        @invoice = Invoice.new
        @invoice.errors.add(:base, e)
      end
    end

    # def calculate_bill(patient)
    #   calculate_days(patient) * ward_rate(patient) + calculate_appointments_charges(patient)
    # end

    # def calculate_days(patient)
    #   days = (patient.dischagre_on.day - patient.admit_date.day).abs
    #   days.zero? ? 1 : days
    # end

    # def calculate_appointments(patient)
    #   patient.appointments.where(status: 'done').count
    # end

    # def calculate_appointments_charges(patient)
    #   appointments = patient.appointments.done
    #                         .joins(:physician)
    #                         .select(:appointment_date, :charge, :charge_at_weekend)

    #   appointments.collect do |attr|
    #     attr.appointment_date.on_weekend? ? attr.charge_at_weekend.to_i : attr.charge.to_i
    #   end.sum
    # end

    # def ward_rate(patient)
    #   Invoice.rate[patient.ward_occupancy_detail.ward_type.to_sym]
    # end

    def find_invoice
      @patient_invoice = Invoice.find(params[:id])
    end

    def find_patient
      @patient = Patient.find(params[:id])
      @patient.update(dischagre_on: Date.current)
    end
  end
end
