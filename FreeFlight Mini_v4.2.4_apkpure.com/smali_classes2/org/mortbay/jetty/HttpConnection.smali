.class public Lorg/mortbay/jetty/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lorg/mortbay/io/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/HttpConnection$OutputWriter;,
        Lorg/mortbay/jetty/HttpConnection$Output;,
        Lorg/mortbay/jetty/HttpConnection$RequestHandler;
    }
.end annotation


# static fields
.field private static UNKNOWN:I

.field private static __currentConnection:Ljava/lang/ThreadLocal;


# instance fields
.field private _associatedObject:Ljava/lang/Object;

.field protected final _connector:Lorg/mortbay/jetty/Connector;

.field private transient _delayedHandling:Z

.field private _destroy:Z

.field protected final _endp:Lorg/mortbay/io/EndPoint;

.field private transient _expect:I

.field protected final _generator:Lorg/mortbay/jetty/Generator;

.field private _handling:Z

.field private transient _head:Z

.field private transient _host:Z

.field protected _in:Ljavax/servlet/ServletInputStream;

.field _include:I

.field protected _out:Lorg/mortbay/jetty/HttpConnection$Output;

.field protected final _parser:Lorg/mortbay/jetty/Parser;

.field protected _printWriter:Ljava/io/PrintWriter;

.field protected final _request:Lorg/mortbay/jetty/Request;

.field protected final _requestFields:Lorg/mortbay/jetty/HttpFields;

.field private _requests:I

.field protected final _response:Lorg/mortbay/jetty/Response;

.field protected final _responseFields:Lorg/mortbay/jetty/HttpFields;

.field protected final _server:Lorg/mortbay/jetty/Server;

.field private _timeStamp:J

.field protected final _uri:Lorg/mortbay/jetty/HttpURI;

.field private transient _version:I

.field protected _writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, -0x2

    sput v0, Lorg/mortbay/jetty/HttpConnection;->UNKNOWN:I

    .line 60
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/HttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V
    .locals 6
    .param p1, "connector"    # Lorg/mortbay/jetty/Connector;
    .param p2, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .param p3, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpConnection;->_timeStamp:J

    .line 88
    sget v0, Lorg/mortbay/jetty/HttpConnection;->UNKNOWN:I

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->_expect:I

    .line 89
    sget v0, Lorg/mortbay/jetty/HttpConnection;->UNKNOWN:I

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->_version:I

    .line 90
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpConnection;->_head:Z

    .line 91
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpConnection;->_host:Z

    .line 92
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpConnection;->_delayedHandling:Z

    .line 113
    sget-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    const-string v1, "UTF-8"

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpURI;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpURI;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 114
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    .line 115
    iput-object p2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    .line 116
    new-instance v0, Lorg/mortbay/jetty/HttpParser;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    new-instance v3, Lorg/mortbay/jetty/HttpConnection$RequestHandler;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lorg/mortbay/jetty/HttpConnection$RequestHandler;-><init>(Lorg/mortbay/jetty/HttpConnection;Lorg/mortbay/jetty/HttpConnection$1;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->getHeaderBufferSize()I

    move-result v4

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->getRequestBufferSize()I

    move-result v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/jetty/HttpParser;-><init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/HttpParser$EventHandler;II)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    .line 117
    new-instance v0, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    .line 118
    new-instance v0, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    .line 119
    new-instance v0, Lorg/mortbay/jetty/Request;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/Request;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    .line 120
    new-instance v0, Lorg/mortbay/jetty/Response;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/Response;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    .line 121
    new-instance v0, Lorg/mortbay/jetty/HttpGenerator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v3}, Lorg/mortbay/jetty/Connector;->getHeaderBufferSize()I

    move-result v3

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v4}, Lorg/mortbay/jetty/Connector;->getResponseBufferSize()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mortbay/jetty/HttpGenerator;-><init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    .line 122
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Server;->getSendServerVersion()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->setSendServerVersion(Z)V

    .line 123
    iput-object p3, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    .line 124
    return-void

    .line 113
    :cond_0
    new-instance v0, Lorg/mortbay/jetty/EncodedHttpURI;

    sget-object v1, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;Lorg/mortbay/jetty/Parser;Lorg/mortbay/jetty/Generator;Lorg/mortbay/jetty/Request;)V
    .locals 3
    .param p1, "connector"    # Lorg/mortbay/jetty/Connector;
    .param p2, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .param p3, "server"    # Lorg/mortbay/jetty/Server;
    .param p4, "parser"    # Lorg/mortbay/jetty/Parser;
    .param p5, "generator"    # Lorg/mortbay/jetty/Generator;
    .param p6, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpConnection;->_timeStamp:J

    .line 88
    sget v0, Lorg/mortbay/jetty/HttpConnection;->UNKNOWN:I

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->_expect:I

    .line 89
    sget v0, Lorg/mortbay/jetty/HttpConnection;->UNKNOWN:I

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->_version:I

    .line 90
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpConnection;->_head:Z

    .line 91
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpConnection;->_host:Z

    .line 92
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpConnection;->_delayedHandling:Z

    .line 129
    sget-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    const-string v1, "UTF-8"

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpURI;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpURI;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 130
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    .line 131
    iput-object p2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    .line 132
    iput-object p4, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    .line 133
    new-instance v0, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    .line 134
    new-instance v0, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    .line 135
    iput-object p6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    .line 136
    new-instance v0, Lorg/mortbay/jetty/Response;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/Response;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    .line 137
    iput-object p5, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    .line 138
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Server;->getSendServerVersion()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->setSendServerVersion(Z)V

    .line 139
    iput-object p3, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    .line 140
    return-void

    .line 129
    :cond_0
    new-instance v0, Lorg/mortbay/jetty/EncodedHttpURI;

    sget-object v1, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static access$100(Lorg/mortbay/jetty/HttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->_host:Z

    return v0
.end method

.method static access$102(Lorg/mortbay/jetty/HttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpConnection;->_host:Z

    return p1
.end method

.method static access$200(Lorg/mortbay/jetty/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 57
    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->_expect:I

    return v0
.end method

.method static access$202(Lorg/mortbay/jetty/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/mortbay/jetty/HttpConnection;->_expect:I

    return p1
.end method

.method static access$300()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/mortbay/jetty/HttpConnection;->UNKNOWN:I

    return v0
.end method

.method static access$400(Lorg/mortbay/jetty/HttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->_delayedHandling:Z

    return v0
.end method

.method static access$402(Lorg/mortbay/jetty/HttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpConnection;->_delayedHandling:Z

    return p1
.end method

.method static access$500(Lorg/mortbay/jetty/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 57
    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->_version:I

    return v0
.end method

.method static access$502(Lorg/mortbay/jetty/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/mortbay/jetty/HttpConnection;->_version:I

    return p1
.end method

.method static access$600(Lorg/mortbay/jetty/HttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->_head:Z

    return v0
.end method

.method static access$602(Lorg/mortbay/jetty/HttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpConnection;->_head:Z

    return p1
.end method

.method static access$708(Lorg/mortbay/jetty/HttpConnection;)I
    .locals 2
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 57
    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requests:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/jetty/HttpConnection;->_requests:I

    return v0
.end method

.method public static getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/mortbay/jetty/HttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    return-object v0
.end method

.method protected static setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1
    .param p0, "connection"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 103
    sget-object v0, Lorg/mortbay/jetty/HttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    return-void
.end method


# virtual methods
.method public commitResponse(Z)V
    .locals 6
    .param p1, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 627
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v3}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v3

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Response;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    .line 632
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v2, v3, p1}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 652
    :cond_0
    if-eqz p1, :cond_1

    .line 653
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2}, Lorg/mortbay/jetty/Generator;->complete()V

    .line 654
    :cond_1
    return-void

    .line 634
    :catch_0
    move-exception v1

    .line 636
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 638
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "header full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    instance-of v2, v2, Lorg/mortbay/jetty/HttpGenerator;

    if-eqz v2, :cond_2

    .line 642
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    check-cast v2, Lorg/mortbay/jetty/HttpGenerator;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->toDetailString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Response;->reset()V

    .line 645
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2, v5}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    .line 646
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    .line 647
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v2, v3, v5}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 648
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2}, Lorg/mortbay/jetty/Generator;->complete()V

    .line 649
    throw v0
.end method

.method public completeResponse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 659
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v3}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v3

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Response;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    .line 664
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 684
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2}, Lorg/mortbay/jetty/Generator;->complete()V

    .line 685
    return-void

    .line 666
    :catch_0
    move-exception v1

    .line 668
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 670
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "header full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 673
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 675
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Response;->reset()V

    .line 676
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2, v5}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    .line 677
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    .line 678
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v2, v3, v5}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 679
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2}, Lorg/mortbay/jetty/Generator;->complete()V

    .line 680
    throw v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 145
    monitor-enter p0

    .line 147
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->_destroy:Z

    .line 148
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->_handling:Z

    if-nez v0, :cond_3

    .line 150
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->destroy()V

    .line 159
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->destroy()V

    .line 163
    :cond_3
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flushResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    .line 693
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v1}, Lorg/mortbay/jetty/Generator;->flush()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Lorg/mortbay/jetty/EofException;

    if-eqz v1, :cond_0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    throw v0

    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lorg/mortbay/jetty/EofException;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getAssociatedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_associatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnector()Lorg/mortbay/jetty/Connector;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    return-object v0
.end method

.method public getEndPoint()Lorg/mortbay/io/EndPoint;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    return-object v0
.end method

.method public getGenerator()Lorg/mortbay/jetty/Generator;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    return-object v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    if-nez v0, :cond_0

    .line 312
    new-instance v1, Lorg/mortbay/jetty/HttpParser$Input;

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->getMaxIdleTime()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lorg/mortbay/jetty/HttpParser$Input;-><init>(Lorg/mortbay/jetty/HttpParser;J)V

    iput-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/HttpConnection$Output;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    return-object v0
.end method

.method public getParser()Lorg/mortbay/jetty/Parser;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    return-object v0
.end method

.method public getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    .line 336
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/HttpConnection$OutputWriter;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    .line 339
    new-instance v0, Lorg/mortbay/jetty/HttpConnection$1;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    invoke-direct {v0, p0, v1}, Lorg/mortbay/jetty/HttpConnection$1;-><init>(Lorg/mortbay/jetty/HttpConnection;Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_printWriter:Ljava/io/PrintWriter;

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpConnection$OutputWriter;->setCharacterEncoding(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_printWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public getRequest()Lorg/mortbay/jetty/Request;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    return-object v0
.end method

.method public getRequestFields()Lorg/mortbay/jetty/HttpFields;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    return-object v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requests:I

    return v0
.end method

.method public getResolveNames()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getResolveNames()Z

    move-result v0

    return v0
.end method

.method public getResponse()Lorg/mortbay/jetty/Response;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    return-object v0
.end method

.method public getResponseFields()Lorg/mortbay/jetty/HttpFields;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpConnection;->_timeStamp:J

    return-wide v0
.end method

.method public handle()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v4, 0x1

    .line 375
    .local v4, "more_in_buffer":Z
    const/4 v5, 0x0

    .line 377
    .local v5, "no_progress":I
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    .line 381
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    :try_start_1
    iget-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_handling:Z

    if-eqz v7, :cond_4

    .line 384
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 387
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 435
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Lorg/mortbay/jetty/HttpException;
    :try_start_3
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 439
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "uri="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v10, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 440
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "fields="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v10, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 441
    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 443
    :cond_1
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpException;->getStatus()I

    move-result v10

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpException;->getReason()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v7, v10, v11, v12, v13}, Lorg/mortbay/jetty/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 445
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    const/4 v10, 0x1

    invoke-interface {v7, v10}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    .line 446
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->close()V

    .line 447
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 451
    .end local v1    # "e":Lorg/mortbay/jetty/HttpException;
    :catchall_1
    move-exception v7

    move-object v10, v7

    const/4 v7, 0x0

    invoke-static {v7}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    .line 453
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_2
    const/4 v4, 0x1

    .line 455
    :goto_1
    monitor-enter p0

    .line 457
    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_handling:Z

    .line 459
    iget-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_destroy:Z

    if-eqz v7, :cond_11

    .line 461
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    .line 462
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 497
    :cond_3
    :goto_2
    return-void

    .line 386
    :cond_4
    const/4 v7, 0x1

    :try_start_5
    iput-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_handling:Z

    .line 387
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    :try_start_6
    invoke-static {p0}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    .line 390
    const-wide/16 v2, 0x0

    .line 392
    .local v2, "io":J
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    .line 393
    .local v0, "continuation":Lorg/mortbay/util/ajax/Continuation;
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 395
    const-string v7, "resume continuation {}"

    invoke-static {v7, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 397
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 398
    :cond_5
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V
    :try_end_6
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 451
    :cond_6
    :goto_3
    const/4 v7, 0x0

    invoke-static {v7}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    .line 453
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_7
    const/4 v4, 0x1

    .line 455
    :goto_4
    monitor-enter p0

    .line 457
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_handling:Z

    .line 459
    iget-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_destroy:Z

    if-eqz v7, :cond_18

    .line 461
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    .line 462
    monitor-exit p0

    goto :goto_2

    .line 464
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v7

    .line 403
    :cond_8
    :try_start_8
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v7

    if-nez v7, :cond_9

    .line 404
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->parseAvailable()J

    move-result-wide v2

    .line 411
    :cond_9
    :goto_5
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_a

    .line 413
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->flush()J

    move-result-wide v8

    .line 414
    .local v8, "written":J
    add-long/2addr v2, v8

    .line 415
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_b

    .line 422
    .end local v8    # "written":J
    :cond_a
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 424
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->flush()V

    .line 425
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v7

    if-nez v7, :cond_27

    .line 426
    const/4 v5, 0x0

    move v6, v5

    .line 429
    .end local v5    # "no_progress":I
    .local v6, "no_progress":I
    :goto_6
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-lez v7, :cond_c

    .line 430
    const/4 v5, 0x0

    .end local v6    # "no_progress":I
    .restart local v5    # "no_progress":I
    goto :goto_3

    .line 417
    .restart local v8    # "written":J
    :cond_b
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 418
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->flush()V
    :try_end_8
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 431
    .end local v5    # "no_progress":I
    .end local v8    # "written":J
    .restart local v6    # "no_progress":I
    :cond_c
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "no_progress":I
    .restart local v5    # "no_progress":I
    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    .line 451
    const/4 v7, 0x0

    invoke-static {v7}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    .line 453
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_d
    const/4 v4, 0x1

    .line 455
    :goto_7
    monitor-enter p0

    .line 457
    const/4 v7, 0x0

    :try_start_9
    iput-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_handling:Z

    .line 459
    iget-boolean v7, p0, Lorg/mortbay/jetty/HttpConnection;->_destroy:Z

    if-eqz v7, :cond_20

    .line 461
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    .line 462
    monitor-exit p0

    goto/16 :goto_2

    .line 464
    :catchall_3
    move-exception v7

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v7

    .line 490
    .end local v2    # "io":J
    :cond_e
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v7, v7, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v7, :cond_f

    .line 494
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    check-cast v7, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->setWritable(Z)V

    .line 451
    :cond_f
    throw v10

    .line 464
    .end local v0    # "continuation":Lorg/mortbay/util/ajax/Continuation;
    :catchall_4
    move-exception v7

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v7

    .line 453
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 464
    :cond_11
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 466
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v7

    if-nez v7, :cond_14

    .line 468
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_12

    .line 470
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    const/4 v11, 0x1

    invoke-interface {v7, v11}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    .line 471
    const/4 v4, 0x0

    .line 474
    :cond_12
    if-eqz v4, :cond_15

    .line 476
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    .line 477
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_13
    const/4 v4, 0x1

    .line 482
    :goto_8
    const/4 v5, 0x0

    .line 485
    :cond_14
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    .line 486
    .restart local v0    # "continuation":Lorg/mortbay/util/ajax/Continuation;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v7

    if-eqz v7, :cond_e

    goto/16 :goto_2

    .line 480
    .end local v0    # "continuation":Lorg/mortbay/util/ajax/Continuation;
    :cond_15
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    goto :goto_8

    .line 477
    :cond_16
    const/4 v4, 0x0

    goto :goto_8

    .line 453
    .restart local v0    # "continuation":Lorg/mortbay/util/ajax/Continuation;
    .restart local v2    # "io":J
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 464
    :cond_18
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 466
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 468
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_19

    .line 470
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    const/4 v10, 0x1

    invoke-interface {v7, v10}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    .line 471
    const/4 v4, 0x0

    .line 474
    :cond_19
    if-eqz v4, :cond_1d

    .line 476
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    .line 477
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v7

    if-nez v7, :cond_1a

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_1a
    const/4 v4, 0x1

    .line 482
    :goto_9
    const/4 v5, 0x0

    .line 485
    :cond_1b
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v7

    if-nez v7, :cond_3

    .line 490
    :cond_1c
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v7, v7, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v7, :cond_0

    .line 494
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    check-cast v7, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->setWritable(Z)V

    goto/16 :goto_0

    .line 480
    :cond_1d
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    goto :goto_9

    .line 477
    :cond_1e
    const/4 v4, 0x0

    goto :goto_9

    .line 453
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 464
    :cond_20
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 466
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v7

    if-nez v7, :cond_23

    .line 468
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_21

    .line 470
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    const/4 v10, 0x1

    invoke-interface {v7, v10}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    .line 471
    const/4 v4, 0x0

    .line 474
    :cond_21
    if-eqz v4, :cond_25

    .line 476
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    .line 477
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v7}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v7

    if-eqz v7, :cond_26

    :cond_22
    const/4 v4, 0x1

    .line 482
    :goto_a
    const/4 v5, 0x0

    .line 485
    :cond_23
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_24

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v7

    if-nez v7, :cond_3

    .line 490
    :cond_24
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v7, v7, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v7, :cond_3

    .line 494
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    check-cast v7, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->setWritable(Z)V

    goto/16 :goto_2

    .line 480
    :cond_25
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    goto :goto_a

    .line 477
    :cond_26
    const/4 v4, 0x0

    goto :goto_a

    :cond_27
    move v6, v5

    .end local v5    # "no_progress":I
    .restart local v6    # "no_progress":I
    goto/16 :goto_6
.end method

.method protected handleRequest()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x194

    .line 518
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Server;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 520
    const/4 v4, 0x0

    .line 521
    .local v4, "retrying":Z
    const/4 v1, 0x0

    .line 522
    .local v1, "error":Z
    const/4 v5, 0x0

    .line 523
    .local v5, "threadName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 526
    .local v2, "info":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 527
    if-nez v2, :cond_5

    .line 528
    new-instance v6, Lorg/mortbay/jetty/HttpException;

    const/16 v7, 0x190

    invoke-direct {v6, v7}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v6
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :catch_0
    move-exception v3

    .line 546
    .local v3, "r":Lorg/mortbay/jetty/RetryRequest;
    :try_start_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 547
    invoke-static {v3}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    :cond_0
    const/4 v4, 0x1

    .line 590
    if-eqz v5, :cond_1

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 593
    :cond_1
    if-nez v4, :cond_4

    .line 595
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 597
    const-string v6, "continuation still pending {}"

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 598
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    invoke-interface {v6}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 601
    :cond_2
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 603
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v6}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 604
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6, v7}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 606
    :cond_3
    if-eqz v1, :cond_21

    .line 607
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    .end local v3    # "r":Lorg/mortbay/jetty/RetryRequest;
    :goto_0
    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->close()V

    .line 622
    .end local v1    # "error":Z
    .end local v2    # "info":Ljava/lang/String;
    .end local v4    # "retrying":Z
    .end local v5    # "threadName":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 529
    .restart local v1    # "error":Z
    .restart local v2    # "info":Ljava/lang/String;
    .restart local v4    # "retrying":Z
    .restart local v5    # "threadName":Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6, v2}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 531
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v6, :cond_6

    .line 532
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection$Output;->reopen()V

    .line 534
    :cond_6
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 536
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 540
    :cond_7
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-interface {v6, v7, v8}, Lorg/mortbay/jetty/Connector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    .line 542
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v6, p0}, Lorg/mortbay/jetty/Server;->handle(Lorg/mortbay/jetty/HttpConnection;)V
    :try_end_2
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    if-eqz v5, :cond_8

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 593
    :cond_8
    if-nez v4, :cond_4

    .line 595
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 597
    const-string v6, "continuation still pending {}"

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 598
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    invoke-interface {v6}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 601
    :cond_9
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 603
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v6}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 604
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6, v7}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 606
    :cond_a
    if-eqz v1, :cond_30

    .line 607
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    goto/16 :goto_0

    .line 550
    :catch_1
    move-exception v0

    .line 552
    .local v0, "e":Lorg/mortbay/jetty/EofException;
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 553
    const/4 v1, 0x1

    .line 590
    if-eqz v5, :cond_b

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 593
    :cond_b
    if-nez v4, :cond_4

    .line 595
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 597
    const-string v6, "continuation still pending {}"

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 598
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    invoke-interface {v6}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 601
    :cond_c
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 603
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v6}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 604
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6, v7}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 606
    :cond_d
    if-eqz v1, :cond_24

    .line 607
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    goto/16 :goto_0

    .line 555
    .end local v0    # "e":Lorg/mortbay/jetty/EofException;
    :catch_2
    move-exception v0

    .line 557
    .local v0, "e":Lorg/mortbay/jetty/HttpException;
    :try_start_4
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 558
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 559
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpException;->getStatus()I

    move-result v7

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpException;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 560
    const/4 v1, 0x1

    .line 590
    if-eqz v5, :cond_e

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 593
    :cond_e
    if-nez v4, :cond_4

    .line 595
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 597
    const-string v6, "continuation still pending {}"

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 598
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    invoke-interface {v6}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 601
    :cond_f
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 603
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v6}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 604
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6, v7}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 606
    :cond_10
    if-eqz v1, :cond_27

    .line 607
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    goto/16 :goto_0

    .line 562
    .end local v0    # "e":Lorg/mortbay/jetty/HttpException;
    :catch_3
    move-exception v0

    .line 564
    .local v0, "e":Lorg/mortbay/io/RuntimeIOException;
    :try_start_5
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 565
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 566
    const/4 v1, 0x1

    .line 590
    if-eqz v5, :cond_11

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 593
    :cond_11
    if-nez v4, :cond_4

    .line 595
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 597
    const-string v6, "continuation still pending {}"

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 598
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    invoke-interface {v6}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 601
    :cond_12
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 603
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v6}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 604
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6, v7}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 606
    :cond_13
    if-eqz v1, :cond_2a

    .line 607
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    goto/16 :goto_0

    .line 568
    .end local v0    # "e":Lorg/mortbay/io/RuntimeIOException;
    :catch_4
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_6
    instance-of v6, v0, Ljava/lang/ThreadDeath;

    if-eqz v6, :cond_18

    .line 571
    check-cast v0, Ljava/lang/ThreadDeath;

    .end local v0    # "e":Ljava/lang/Throwable;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 590
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_14

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 593
    :cond_14
    if-nez v4, :cond_17

    .line 595
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 597
    const-string v7, "continuation still pending {}"

    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 598
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v7

    invoke-interface {v7}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 601
    :cond_15
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 603
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v7}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 604
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7, v8}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 606
    :cond_16
    if-eqz v1, :cond_1e

    .line 607
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v7}, Lorg/mortbay/io/EndPoint;->close()V

    .line 590
    :cond_17
    :goto_2
    throw v6

    .line 573
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_18
    if-nez v2, :cond_1c

    .line 575
    :try_start_7
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 576
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 577
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 578
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v7, 0x190

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/mortbay/jetty/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 586
    :goto_3
    const/4 v1, 0x1

    .line 590
    if-eqz v5, :cond_19

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 593
    :cond_19
    if-nez v4, :cond_4

    .line 595
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 597
    const-string v6, "continuation still pending {}"

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 598
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v6

    invoke-interface {v6}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 601
    :cond_1a
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 603
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v6}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 604
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6, v7}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 606
    :cond_1b
    if-eqz v1, :cond_2d

    .line 607
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    goto/16 :goto_0

    .line 582
    :cond_1c
    :try_start_8
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 584
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/mortbay/jetty/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 617
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1d
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_2

    .line 610
    :cond_1e
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 611
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v7, v11}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 612
    :cond_1f
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v7}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_2

    .line 617
    .restart local v3    # "r":Lorg/mortbay/jetty/RetryRequest;
    :cond_20
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    .end local v3    # "r":Lorg/mortbay/jetty/RetryRequest;
    :goto_4
    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_1

    .line 610
    .restart local v3    # "r":Lorg/mortbay/jetty/RetryRequest;
    :cond_21
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v6

    if-nez v6, :cond_22

    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-nez v6, :cond_22

    .line 611
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6, v11}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 612
    :cond_22
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    .end local v3    # "r":Lorg/mortbay/jetty/RetryRequest;
    :goto_5
    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_1

    .line 617
    .local v0, "e":Lorg/mortbay/jetty/EofException;
    :cond_23
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_4

    .line 610
    :cond_24
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v6

    if-nez v6, :cond_25

    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-nez v6, :cond_25

    .line 611
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6, v11}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 612
    :cond_25
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_5

    .line 617
    .local v0, "e":Lorg/mortbay/jetty/HttpException;
    :cond_26
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_4

    .line 610
    :cond_27
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v6

    if-nez v6, :cond_28

    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-nez v6, :cond_28

    .line 611
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6, v11}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 612
    :cond_28
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_5

    .line 617
    .local v0, "e":Lorg/mortbay/io/RuntimeIOException;
    :cond_29
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_4

    .line 610
    :cond_2a
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v6

    if-nez v6, :cond_2b

    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 611
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6, v11}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 612
    :cond_2b
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_5

    .line 617
    .local v0, "e":Ljava/lang/Throwable;
    :cond_2c
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_4

    .line 610
    :cond_2d
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 611
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6, v11}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 612
    :cond_2e
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto :goto_5

    .line 617
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2f
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto/16 :goto_4

    .line 610
    :cond_30
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-nez v6, :cond_31

    .line 611
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v6, v11}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 612
    :cond_31
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    goto/16 :goto_5
.end method

.method public include()V
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->_include:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->_include:I

    .line 717
    return-void
.end method

.method public included()V
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->_include:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->_include:I

    .line 723
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection$Output;->reopen()V

    .line 725
    :cond_0
    return-void
.end method

.method public isConfidential(Lorg/mortbay/jetty/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 247
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Connector;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v0}, Lorg/mortbay/jetty/Parser;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->_delayedHandling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncluding()Z
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->_include:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntegral(Lorg/mortbay/jetty/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Connector;->isIntegral(Lorg/mortbay/jetty/Request;)Z

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseCommitted()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "returnBuffers"    # Z

    .prologue
    .line 502
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    .line 504
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->clear()V

    .line 505
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->recycle()V

    .line 507
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    .line 509
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->clear()V

    .line 510
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->recycle()V

    .line 512
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->clear()V

    .line 513
    return-void
.end method

.method public setAssociatedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "associatedObject"    # Ljava/lang/Object;

    .prologue
    .line 209
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_associatedObject:Ljava/lang/Object;

    .line 210
    return-void
.end method
