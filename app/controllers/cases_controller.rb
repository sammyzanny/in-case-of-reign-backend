class CasesController < ApplicationController

    def index
        cases = Case.all
        render json: CaseSerializer.new(cases)
    end

    def create
        new_case = Case.create(title: params[:title], disclosure: params[:disclosure], rating_boost: params[:rating_boost].to_i, creator_id: params[:creator_id].to_i);
        params[:descriptions].each_with_index{|desc, i| Option.create(description: params[:descriptions][i], points: params[:all_points][i].to_i, alert: params[:alerts][i], case_id: new_case.id)}
        render json: CaseSerializer.new(new_case)
    end

    def destroy
        new_case = Case.find_by(id: params[:id])
        new_case.destroy
        render json: {}
    end

    private
    def option_params
        params.permit(:description1, :points1, :description2, :points2)
    end

    def case_params
        params.permit(:title, :disclosure, :rating_boost, :creator_id )
    end
end
