Supplejack.configure do |config|

  # ===> Credentials
  # Use the api_key for your Supplejack user
  # Please replace XXXX with your own api key
  config.api_key = "XXXX"
  #
  # ===> End point
  # For production use default url which is http://api.youapihost.org
  # config.api_url = "http://youapihost.org"
  #
  # ===> URL Format
  # This is the format use for the url's in the application
  # The default is the item hash which looks like: "text='dog'&i[content_partner]=NLNZ&i[category]=Images"
  # config.url_format = :item_hash
  #
  # ===> Custom Search
  # In case you want to filter the results through a custom search
  # specify the slug
  # config.custom_search = nil
  #
  # ===> Facets
  # The is the list of facets that are going to be requested to the api
  # When you ask for the facets, they are going to be ordered in the
  # order presented here
  config.facets = [
    :name,
    :description,
    :age
  ]
  #
  # ===> Facet values sorting
  # By default facet values are sorted by whatever solr returns.
  # The sorting options are :index and :count
  # :index means lexical sorting (Alphabetical)
  # :count means is ordered by the number of results for each facet value
  # config.facets_sort = nil
  #
  # ===> Fields
  # This is a list of fields/groups that will be requested to the API for every
  # record. :default will return the default set of fields.
  #
  config.fields = [
    :default
  ]

  # ===> Number of facet values
  # This will limit the number of facet values returned for each facet
  # Be carefull not to make it too high for performance reasons
  # config.facets_per_page = 10
  #
  # ===> Per Page
  # Number of results returned per page
  # config.per_page = 20
  #
  # ===> Timeout
  # By default the request to the API will timeout after 30 seconds
  # config.timeout = 30
  #
  # ===> Single value methods
  # Some of the values returned by the API are actually multiple values
  # so they are returned as a array. But most of the time we are only intereseted
  # in one of those values. Here you can define which values would you like to
  # be converted to a string.
  # config.single_value_methods = [
  #   :email
  # ]
  #
  # ===> Search attributes
  # The search object can store any number of attributes which are actually
  # the filters passed to the search
  # Here you can define which attributes you want the search to accept.
  # This is going to allow you to do:
  #   search = Search.new(text: 'dog', i: {category: 'Images'})
  #   search.category
  #
  # config.search_attributes = [
  #   :category
  # ]
  #
  # ===> Record klass
  # Name of the main model throught which you interact with the Supplejack API
  # This is used to initialize objects of this class when the list of
  # favourites is fetched.
  #
  # config.record_klass = "Record"
  #
  # ===> Enable Debugging
  # Set this flag to true in order to get display errors and the actual SOLR requests 
  # in the logs generated by the API.
  #
  # config.enable_debugging = true
  #
  # ===> Enable Caching
  # Set this flag to true in order to cache the facet_value response and the search counts
  #
  # config.enable_caching = true  
end
