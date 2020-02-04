class ProyectosController <ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :dashboard



  def new
    @post=Proyecto.new
  end

  def create
    @post = Proyecto.new(proyecto_params)
      if  @post.save
       redirect_to root_path, notice: 'guardamos'
     else
       render new_proyecto_path, alert: ' no guardamos'
   end

  end

  def dashboard
    if params[:status].present?
@posts = Proyecto.where('status = ?', params[:status])
else
     @posts = Proyecto.all
  end
end

def index
end
  private
   def proyecto_params
     params.require(:proyecto).permit(:name, :descripcion, :begin_at, :end_at, :status)
   end


end
