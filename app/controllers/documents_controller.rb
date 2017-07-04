class DocumentsController < ApplicationController

  before_action :set_document, only: %i[show destroy]

  def index
    @query = Document.ransack(params[:q])
    @documents = @query.result.page(params[:page])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to @document, notice: 'Document created'
    else
      render :new
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_path, notice: 'Document was deleted'
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title, items_attributes: %i[id title variant_id])
  end
end
