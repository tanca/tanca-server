#ifndef TANCASERVER_H
#define TANCASERVER_H


#include "HttpFileServer.h"
#include "EventLoop.h"

#include <vector>
#include <mutex>
#include <iomanip>


class TancaServer : public HttpFileServer
{
public:
    TancaServer();

    void Start();
    void Stop();
    bool Initialize();

private:

    EventLoop mMainLoop;

    void WsReadData(const tcp::Conn &conn);
    bool ReadDataPath(const tcp::Conn &conn, const HttpRequest &request);
    void NewConnection(const tcp::Conn &conn);
    void ClientClosed(const tcp::Conn &conn);

};

#endif // TANCASERVER_H
