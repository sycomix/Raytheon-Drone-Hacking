.class Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;
.super Ljava/lang/Object;
.source "DefaultServlet.java"

# interfaces
.implements Lorg/mortbay/jetty/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/DefaultServlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnCachedContent"
.end annotation


# instance fields
.field _resource:Lorg/mortbay/resource/Resource;

.field private final this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    .locals 0
    .param p2, "resource"    # Lorg/mortbay/resource/Resource;

    .prologue
    .line 944
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->_resource:Lorg/mortbay/resource/Resource;

    .line 946
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->access$000(Lorg/mortbay/jetty/servlet/DefaultServlet;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->_resource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->release()V

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;->_resource:Lorg/mortbay/resource/Resource;

    .line 989
    return-void
.end method
