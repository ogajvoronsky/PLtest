class CsvFilesController < ApplicationController
  before_action :set_csv_file, only:  [ :show, :update]

    def show
    end

    def update
      # @csv_file.file <<
      # @csv_file.o
      #redirect_to cards_path, notice: @csv_file.uploaded_file_csv.url
    end

    def new
      @csv_file=CsvFile.new
    end


    private
    def user_params
      params.require(:CsvFile).permit(:uploaded_file_csv)
    end

    def set_csv_file
      session[:file_id] = CsvFile.create.id if CsvFile.find_by(id: session[:file_id]).nil?
      @csv_file = CsvFile.find_by(id: session[:file_id])
    end

end
