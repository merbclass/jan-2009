class Comments < Application
  # provides :xml, :yaml, :js

  def index
    @comments = Comment.all
    display @comments
  end

  def show(id)
    @comment = Comment.get(id)
    raise NotFound unless @comment
    display @comment
  end

  def new
    only_provides :html
    @comment = Comment.new
    display @comment
  end

  def edit(id)
    only_provides :html
    @comment = Comment.get(id)
    raise NotFound unless @comment
    display @comment
  end

  def create(article_id, comment)
    @comment = Comment.new(comment.merge(:article_id => article_id))
    if @comment.save
      redirect resource(@comment.article), :message => {:notice => "Comment was successfully created"}
    else
      message[:error] = "Comment failed to be created"
      render :new
    end
  end

  def update(id, comment)
    @comment = Comment.get(id)
    raise NotFound unless @comment
    if @comment.update_attributes(comment)
       redirect resource(@comment.article)
    else
      display @comment, :edit
    end
  end

  def destroy(id)
    @comment = Comment.get(id)
    raise NotFound unless @comment
    if @comment.destroy
      redirect resource(:comments)
    else
      raise InternalServerError
    end
  end

end # Comments
