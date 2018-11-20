class CsvuploadsController < ApplicationController

  def create
    @contents = params[:file].read
    @contents = @contents.split("\n")

    inserts = []
    @contents.each do |line|
      @arr = []
      @arr = line.split(",")

      inserts.push "('#{@arr[0]}', #{@arr[1]}, #{@arr[2]}, #{@arr[3]}, #{@arr[4]}, #{@arr[5]}, '#{@arr[6]}', '#{@arr[7]}', '#{@arr[8]}', #{@arr[9]}, #{@arr[10]}, '#{DateTime.now.to_date}', '#{DateTime.now.to_date}')"
    end

    sql = "INSERT INTO items (name, price, quantity, location_id, item_delete_date, user_id, serial_number, brand, model, operable, checkout_user_id, created_at, updated_at) VALUES #{inserts.join(", ")}"

    ActiveRecord::Base.connection.execute(sql)
    render json: "Upload complete"

  end

  def csvupload_params
    params.permit(:file)
  end

end