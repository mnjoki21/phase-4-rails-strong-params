class Bird < ApplicationRecord
    def create
        # params help in mass assignment
        bird = Bird.create(params.permit(:name, :species))
        render json: bird, status: :created
    end
end
