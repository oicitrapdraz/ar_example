class RecordsController < ApplicationController
  before_action :set_record, only: %i[show edit]

  # GET /records
  # GET /records.json
  def index
    @records = Action.all
  end

  # GET /records/1
  # GET /records/1.json
  def show; end

  # GET /records/new
  def new
    @record = Action.new
  end
end
