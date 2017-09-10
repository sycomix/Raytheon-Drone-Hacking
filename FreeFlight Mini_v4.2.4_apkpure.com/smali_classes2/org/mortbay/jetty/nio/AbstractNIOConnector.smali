.class public abstract Lorg/mortbay/jetty/nio/AbstractNIOConnector;
.super Lorg/mortbay/jetty/AbstractConnector;
.source "AbstractNIOConnector.java"

# interfaces
.implements Lorg/mortbay/jetty/nio/NIOConnector;


# instance fields
.field private _useDirectBuffers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractConnector;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    return-void
.end method


# virtual methods
.method public getUseDirectBuffers()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    return v0
.end method

.method protected newBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "buf":Lorg/mortbay/io/Buffer;
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->getHeaderBufferSize()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 69
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    .end local v0    # "buf":Lorg/mortbay/io/Buffer;
    invoke-direct {v0, p1}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    .line 74
    .restart local v0    # "buf":Lorg/mortbay/io/Buffer;
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    if-eqz v1, :cond_1

    new-instance v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    .end local v0    # "buf":Lorg/mortbay/io/Buffer;
    invoke-direct {v0, p1}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(I)V

    .restart local v0    # "buf":Lorg/mortbay/io/Buffer;
    :goto_1
    goto :goto_0

    :cond_1
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    .end local v0    # "buf":Lorg/mortbay/io/Buffer;
    invoke-direct {v0, p1}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    goto :goto_1
.end method

.method public setUseDirectBuffers(Z)V
    .locals 0
    .param p1, "direct"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    .line 49
    return-void
.end method
