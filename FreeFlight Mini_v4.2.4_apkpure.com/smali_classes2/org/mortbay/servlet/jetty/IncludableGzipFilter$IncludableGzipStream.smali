.class public Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;
.super Lorg/mortbay/servlet/GzipFilter$GzipStream;
.source "IncludableGzipFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/jetty/IncludableGzipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncludableGzipStream"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V
    .locals 8
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "contentLength"    # J
    .param p6, "bufferSize"    # I
    .param p7, "minGzipSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;->this$0:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 80
    invoke-direct/range {v1 .. v7}, Lorg/mortbay/servlet/GzipFilter$GzipStream;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    .line 81
    return-void
.end method


# virtual methods
.method protected setContentEncodingGzip()Z
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    .line 86
    .local v0, "connection":Lorg/mortbay/jetty/HttpConnection;
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method
