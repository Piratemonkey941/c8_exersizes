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

  def remote_jobs_list
    @remote_jobs = JobPosting.where(location: "Remote")  #remote must be capitalized
  end
end


# job types Remote, hybrid, On-Site