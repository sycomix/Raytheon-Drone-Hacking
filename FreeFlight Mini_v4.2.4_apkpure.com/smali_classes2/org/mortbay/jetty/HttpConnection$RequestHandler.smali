.class Lorg/mortbay/jetty/HttpConnection$RequestHandler;
.super Lorg/mortbay/jetty/HttpParser$EventHandler;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field private _charset:Ljava/lang/String;

.field private final this$0:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method private constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-direct {p0}, Lorg/mortbay/jetty/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/HttpConnection;Lorg/mortbay/jetty/HttpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/jetty/HttpConnection;
    .param p2, "x1"    # Lorg/mortbay/jetty/HttpConnection$1;

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpConnection$RequestHandler;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public content(Lorg/mortbay/io/Buffer;)V
    .locals 2
    .param p1, "ref"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v0, v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    check-cast v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    .line 942
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$400(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->access$402(Lorg/mortbay/jetty/HttpConnection;Z)Z

    .line 945
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V

    .line 947
    :cond_1
    return-void
.end method

.method public headerComplete()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 866
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v0, v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    check-cast v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    .line 868
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$708(Lorg/mortbay/jetty/HttpConnection;)I

    .line 869
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1}, Lorg/mortbay/jetty/HttpConnection;->access$500(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->setVersion(I)V

    .line 870
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$500(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 923
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setCharacterEncodingUnchecked(Ljava/lang/String;)V

    .line 927
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->isChunking()Z

    move-result v0

    if-nez v0, :cond_7

    .line 928
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V

    .line 931
    :goto_1
    return-void

    .line 875
    :pswitch_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1}, Lorg/mortbay/jetty/HttpConnection;->access$600(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->setHead(Z)V

    goto :goto_0

    .line 878
    :pswitch_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1}, Lorg/mortbay/jetty/HttpConnection;->access$600(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->setHead(Z)V

    .line 880
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->DATE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getTimeStampBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v3, v3, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 883
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$100(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 885
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v1, 0x190

    invoke-interface {v0, v1, v7}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    .line 886
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 887
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v0, v1, v6}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 888
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->complete()V

    goto :goto_1

    .line 892
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$200(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->access$300()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 894
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$200(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 898
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getHeaderBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getHeaderBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 900
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v7}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    .line 901
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, v7, v6}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 902
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->complete()V

    .line 903
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    goto/16 :goto_0

    .line 906
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$200(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 911
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v1, 0x1a1

    invoke-interface {v0, v1, v7}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    .line 912
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 913
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v0, v1, v6}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 914
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->complete()V

    goto/16 :goto_1

    .line 930
    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v6}, Lorg/mortbay/jetty/HttpConnection;->access$402(Lorg/mortbay/jetty/HttpConnection;Z)Z

    goto/16 :goto_1

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public messageComplete(J)V
    .locals 2
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->access$400(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->access$402(Lorg/mortbay/jetty/HttpConnection;Z)Z

    .line 959
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V

    .line 961
    :cond_0
    return-void
.end method

.method public parsedHeader(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 9
    .param p1, "name"    # Lorg/mortbay/io/Buffer;
    .param p2, "value"    # Lorg/mortbay/io/Buffer;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 793
    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v4, p1}, Lorg/mortbay/jetty/HttpHeaders;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v1

    .line 794
    .local v1, "ho":I
    sparse-switch v1, :sswitch_data_0

    .line 858
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v4, p1, p2}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 859
    return-void

    .line 798
    :sswitch_0
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/mortbay/jetty/HttpConnection;->access$102(Lorg/mortbay/jetty/HttpConnection;Z)Z

    goto :goto_0

    .line 802
    :sswitch_1
    sget-object v4, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    .line 803
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    sget-object v5, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v5, p2}, Lorg/mortbay/jetty/HttpHeaderValues;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/mortbay/jetty/HttpConnection;->access$202(Lorg/mortbay/jetty/HttpConnection;I)I

    goto :goto_0

    .line 808
    :sswitch_2
    sget-object v4, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    .line 809
    goto :goto_0

    .line 812
    :sswitch_3
    sget-object v4, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v4, p2}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    .line 813
    invoke-static {p2}, Lorg/mortbay/jetty/MimeTypes;->getCharsetFromContentType(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    goto :goto_0

    .line 819
    :sswitch_4
    sget-object v4, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/mortbay/jetty/HttpHeaderValues;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v2

    .line 820
    .local v2, "ordinal":I
    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 824
    :sswitch_5
    new-instance v3, Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .local v3, "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 827
    sget-object v4, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v3}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 828
    .local v0, "cb":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_1

    .line 833
    :sswitch_6
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 834
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4, v7}, Lorg/mortbay/jetty/Generator;->setPersistent(Z)V

    goto :goto_1

    .line 838
    :sswitch_7
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v4}, Lorg/mortbay/jetty/HttpConnection;->access$500(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 839
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_1

    .line 847
    .end local v0    # "cb":Lorg/mortbay/io/BufferCache$CachedBuffer;
    .end local v3    # "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    :sswitch_8
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 848
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4, v7}, Lorg/mortbay/jetty/Generator;->setPersistent(Z)V

    goto/16 :goto_0

    .line 852
    :sswitch_9
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v4}, Lorg/mortbay/jetty/HttpConnection;->access$500(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 853
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 794
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x10 -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
        0x28 -> :sswitch_2
    .end sparse-switch

    .line 820
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
    .end sparse-switch

    .line 830
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method public startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 7
    .param p1, "method"    # Lorg/mortbay/io/Buffer;
    .param p2, "uri"    # Lorg/mortbay/io/Buffer;
    .param p3, "version"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 748
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v2, v1}, Lorg/mortbay/jetty/HttpConnection;->access$102(Lorg/mortbay/jetty/HttpConnection;Z)Z

    .line 749
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->access$300()I

    move-result v3

    invoke-static {v2, v3}, Lorg/mortbay/jetty/HttpConnection;->access$202(Lorg/mortbay/jetty/HttpConnection;I)I

    .line 750
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v2, v1}, Lorg/mortbay/jetty/HttpConnection;->access$402(Lorg/mortbay/jetty/HttpConnection;Z)Z

    .line 751
    iput-object v6, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    .line 753
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 754
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/mortbay/jetty/Request;->setTimeStamp(J)V

    .line 755
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setMethod(Ljava/lang/String;)V

    .line 759
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v3

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/mortbay/jetty/HttpURI;->parse([BII)V

    .line 760
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v3, v3, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setUri(Lorg/mortbay/jetty/HttpURI;)V

    .line 762
    if-nez p3, :cond_2

    .line 764
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setProtocol(Ljava/lang/String;)V

    .line 765
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lorg/mortbay/jetty/HttpConnection;->access$502(Lorg/mortbay/jetty/HttpConnection;I)I

    .line 776
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    sget-object v3, Lorg/mortbay/jetty/HttpMethods;->HEAD_BUFFER:Lorg/mortbay/io/Buffer;

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v1}, Lorg/mortbay/jetty/HttpConnection;->access$602(Lorg/mortbay/jetty/HttpConnection;Z)Z

    .line 784
    return-void

    .line 769
    :cond_2
    sget-object v2, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v2, p3}, Lorg/mortbay/io/BufferCache;->get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p3

    .line 770
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    sget-object v3, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v3, p3}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/mortbay/jetty/HttpConnection;->access$502(Lorg/mortbay/jetty/HttpConnection;I)I

    .line 771
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v2}, Lorg/mortbay/jetty/HttpConnection;->access$500(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 772
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lorg/mortbay/jetty/HttpConnection;->access$502(Lorg/mortbay/jetty/HttpConnection;I)I

    .line 773
    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$RequestHandler;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setProtocol(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 782
    new-instance v1, Lorg/mortbay/jetty/HttpException;

    const/16 v2, 0x190

    invoke-direct {v1, v2, v6, v0}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startResponse(Lorg/mortbay/io/Buffer;ILorg/mortbay/io/Buffer;)V
    .locals 2
    .param p1, "version"    # Lorg/mortbay/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 972
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Bad request!: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 973
    return-void
.end method
