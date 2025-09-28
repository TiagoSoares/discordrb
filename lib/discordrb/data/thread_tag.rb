# frozen_string_literal: true

module Discordrb
  # Recipients are members on private channels - they exist for completeness purposes, but all
  # the attributes will be empty.
  class ThreadTag
    attr_reader :id, :name, :moderated, :emoji_id, :emoji_name

    def initialize(tag, channel)
      @channel = channel
      @id = tag['id'].to_i
      @name = tag['name']
      @moderated = tag['moderated']
      @emoji_id = tag['emoji_id']
      @emoji_name = tag['emoji_name']
    end
  end
end
