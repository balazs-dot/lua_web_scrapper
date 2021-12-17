--/
-- CREATE LUA SCRIPT "SEND_MAIL"()
-- RETURNS ROWCOUNT AS

  smtp = require('socket.smtp')

  sender = 'balazsvarga@hotmail.com'
  receivers = { 'balazsvarga@hotmail.com' } -- use a dictionary
  message_text = 'Lua script hello world'
	
  -- put the message contents into a dictionary:  
  mesgt = {
    -- SMTP headers
    headers = {
      to = 'Captain EXASOL <balazsvarga@hotmail.com>',
      from = 'EXASOL Service <balazsvarga@hotmail.com>',
      subject = 'The mail to test Lua'
    },
    -- message body
    body = message_text
  }
	
  -- send mail using an SMTP server
  res, err = smtp.send{
    from = sender,
    rcpt = receivers, 
    source = smtp.message(mesgt),
    -- you have to know/ask for the correct mail server, our cluster does not know any.
    -- if the cluster has no DNS service, you need to use an IP address
    server = 'smtp-mail.outlook.com'
  }

  if err then
    error(err)
  end
--/

      --from : https://community.exasol.com/t5/database-features/send-an-email-from-lua-script/ta-p/1448
      --example from : https://help.interfaceware.com/code/details/send-an-email-from-lua