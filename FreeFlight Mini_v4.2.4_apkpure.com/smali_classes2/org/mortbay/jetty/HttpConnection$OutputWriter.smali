.class public Lorg/mortbay/jetty/HttpConnection$OutputWriter;
.super Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputWriter"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1

    .prologue
    .line 1145
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$OutputWriter;->this$0:Lorg/mortbay/jetty/HttpConnection;

    .line 1146
    iget-object v0, p1, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;-><init>(Lorg/mortbay/jetty/AbstractGenerator$Output;)V

    .line 1147
    return-void
.end method
