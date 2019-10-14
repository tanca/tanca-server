#include "TancaServer.h"

TancaServer::TancaServer()
    : HttpFileServer (".")
{

}

void TancaServer::Start()
{
    mMainLoop.Run();
}

void TancaServer::Stop()
{

}

bool TancaServer::Initialize()
{
    return true;
}

void TancaServer::WsReadData(const tcp::Conn &conn)
{

}

bool TancaServer::ReadDataPath(const tcp::Conn &conn, const HttpRequest &request)
{
    return true;
}

void TancaServer::NewConnection(const tcp::Conn &conn)
{

}

void TancaServer::ClientClosed(const tcp::Conn &conn)
{

}
