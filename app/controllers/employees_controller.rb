class EmployeesController < ApplicationController
  
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new({:name => "default"})
  end

  def create
    @employee = Employee.new(params.require(:employee).permit(:name, :surname, :experience))
    if @employee.save
      redirect_to(:active => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def update
 
  end

  def delete
  end

  def destroy
  end
  
  
  private
      
    def employee_params
      
    end
    
end
