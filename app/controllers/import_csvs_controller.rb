class ImportCsvsController < ApplicationController

  def show
    @csv = CsvFile.last!
    if @csv.nil? then
      @csv = CsvFile.new
    end

  end

  def update
   @csv.save
   redirect_to cards_path

  end

  def new
    @csv = CsvFile.new(user_params)
    if @csv.save
      redirect_to controller: 'cards', action: 'index', notice: 'File was successfully uploaded.'
    else
      render action: 'import_csvs/show', alert: 'File could not be loaded'
    end

  end

  private
  def user_params
    params.require(:CsvFile).permit(:uploaded_file_csv)
  end
end
