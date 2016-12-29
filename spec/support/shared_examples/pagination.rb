shared_examples "paginated list" do
=begin
"meta": {
    "pagination": {
        "per_page": 25,
        "total_page": 6,
        "total_objects": 11
    }
}
=end

=begin
  # active_model_serializers 0.10.3 can't render json with extra data
  it { expect(json_response).to have_key(:meta) }
  it { expect(json_response[:meta]).to have_key(:pagination) }
  it { expect(json_response[:meta][:pagination]).to have_key(:per_page) }
  it { expect(json_response[:meta][:pagination]).to have_key(:total_pages) }
  it { expect(json_response[:meta][:pagination]).to have_key(:total_objects) }
=end
end
