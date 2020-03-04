class BundlesController < ApplicationController
    def index
        bundles = Bundle.all 
        render json: BundleSerializer.new(bundles)
    end

    def create
        new_bundle = Bundle.create(theme: params[:theme])
        params[:case_ids].each{|id| Bundlor.create(bundle_id: new_bundle.id, case_id: id) }
        render json: BundleSerializer.new(new_bundle)
    end

    def destroy
        old_bundle = Bundle.find_by(id: params[:id])
        old_bundle.bundlors.destroy_all
        old_bundle.destroy
        render json: {}
    end
end
