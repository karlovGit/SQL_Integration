create or replace procedure SEND_CONTRACT_TO_RX(rn in number) is

 req UTL_HTTP.req;
 resp UTL_HTTP.resp;
  begin
  req := UTL_HTTP.begin_request('http://corpparustest:4287/Contracts/SynchrContract/'||rn,
  'GET', UTL_HTTP.http_version_1_0);
  resp := UTL_HTTP.get_response(req);
  UTL_HTTP.end_response(resp);
end SEND_CONTRACT_TO_RX;
