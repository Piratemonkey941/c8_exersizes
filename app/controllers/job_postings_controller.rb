class JobPostingsController < ApplicationController
  def index
    @job_postings = JobPosting.all

    @search_term = params[:search]
    if @search_term.present?
      @job_postings = JobPosting.where("title LIKE ?", "%#{@search_term}%")
    else
      @job_postings = JobPosting.all
    end

  end
end
