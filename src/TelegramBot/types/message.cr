require "json"

module TelegramBot
  class Message
    JSON.mapping({
      message_id:            Int32,
      from:                  {type: User, nilable: true},
      date:                  Int32,
      chat:                  Chat,
      forward_from:          {type: User, nilable: true},
      forward_date:          {type: Int32, nilable: true},
      forward_to_message:    {type: Message, nilable: true},
      text:                  {type: String, nilable: true},
      audio:                 {type: Audio, nilable: true},
      document:              {type: Document, nilable: true},
      photo:                 {type: Array(PhotoSize), nilable: true},
      sticker:               {type: Sticker, nilable: true},
      video:                 {type: Video, nilable: true},
      voice:                 {type: Voice, nilable: true},
      caption:               {type: String, nilable: true},
      contact:               {type: Contact, nilable: true},
      location:              {type: Location, nilable: true},
      new_chat_participant:  {type: User, nilable: true},
      left_chat_participant: {type: User, nilable: true},
      new_chat_title:        {type: String, nilable: true},
      new_chat_photo:        {type: Array(PhotoSize), nilable: true},
      delete_chat_photo:     {type: Bool, nilable: true}, # must be true
      group_chat_created:    {type: Bool, nilable: true}, # must be true
    })

    force_getter! from, forward_from, forward_date, forward_to_message, text, audio, document, photo, sticker, video, voice, caption, contact, location, new_chat_participant, left_chat_participan, new_chat_title, new_chat_photo, delete_chat_photo, group_chat_created
  end
end