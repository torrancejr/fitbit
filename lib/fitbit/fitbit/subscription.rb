module Fitbit
  class Client

    def add_subscription(user_id: '-', collection_path: nil, subscription_id: nil)
      raise StandardError if !subscription_id
      if collection_path
        return post("#{API_URI}/user/#{user_id}/#{collection_path}/apiSubscriptions/#{subscription_id}.json")
      else
        return post("#{API_URI}/user/#{user_id}/apiSubscriptions/#{subscription_id}.json")
      end
    end

    def list_subscriptions(user_id: '-', collection_path: nil)
      if collection_path
        return get("#{API_URI}/user/#{user_id}/#{collection_path}/apiSubscriptions.json")
      else
        return get("#{API_URI}/user/#{user_id}/apiSubscriptions.json")
      end
    end

    def delete_subscription(user_id: '-', collection_path: nil, subscription_id: nil)
      raise StandardError if !subscription_id
      if collection_path
        return delete("#{API_URI}/user/#{user_id}/#{collection_path}/apiSubscriptions/#{subscription_id}.json")
      else
        return delete("#{API_URI}/user/#{user_id}/apiSubscriptions/#{subscription_id}.json")
      end
    end

  end
end
