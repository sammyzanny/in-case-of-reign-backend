class CasesController < ApplicationController

    def index
        cases = Case.all
        render json: CaseSerializer.new(cases)
    end

    def create
        new_case = Case.create(title: params[:title], disclosure: params[:disclosure], rating_boost: params[:rating_boost], creator_id: params[:creator_id]);
        Option.create(description: params[:description1], points: params[:points1], case_id: new_case.id)
        Option.create(description: params[:description2], points: params[:points2], case_id: new_case.id)
        render json: CaseSerializer.new(new_case)
    end

    private
    def option_params
        params.permit(:description1, :points1, :description2, :points2)
    end

    def case_params
        params.permit(:title, :disclosure, :rating_boost, :creator_id )
    end
end
