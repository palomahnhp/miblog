class ArticulosController < ApplicationController

  def index
  end

  def new
    @boton = "Crear"
    @articulo= current_autor.articulos.build
  end

  def create
    @articulo= current_autor.articulos.build(articulo_params)
    #si guarda bien, le redirigimos
    if @articulo.save
      redirect_to @articulo
    else
      render 'new'#viuelve a mostrar la vista del formulario
    end
  end

  def show
    @articulo = Articulo.find(params[:id])
  end

  def edit
    @articulo = Articulo.find(params[:id])
  end


  def update
    @articulo = Articulo.find(params[:id])
  end

  def destroy
  end

  private
    def articulo_params
      params.require(:articulo).permit(:titulo, :contenido)
    end
end
