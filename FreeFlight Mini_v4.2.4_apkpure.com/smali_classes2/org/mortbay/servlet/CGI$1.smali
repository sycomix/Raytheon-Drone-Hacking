.class Lorg/mortbay/servlet/CGI$1;
.super Ljava/lang/Object;
.source "CGI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/mortbay/servlet/CGI;

.field private final val$inFromReq:Ljava/io/InputStream;

.field private final val$inLength:I

.field private final val$outToCgi:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/mortbay/servlet/CGI;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/mortbay/servlet/CGI$1;->this$0:Lorg/mortbay/servlet/CGI;

    iput p2, p0, Lorg/mortbay/servlet/CGI$1;->val$inLength:I

    iput-object p3, p0, Lorg/mortbay/servlet/CGI$1;->val$inFromReq:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/mortbay/servlet/CGI$1;->val$outToCgi:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 280
    :try_start_0
    iget v1, p0, Lorg/mortbay/servlet/CGI$1;->val$inLength:I

    if-lez v1, :cond_0

    .line 281
    iget-object v1, p0, Lorg/mortbay/servlet/CGI$1;->val$inFromReq:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/mortbay/servlet/CGI$1;->val$outToCgi:Ljava/io/OutputStream;

    iget v3, p0, Lorg/mortbay/servlet/CGI$1;->val$inLength:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 282
    :cond_0
    iget-object v1, p0, Lorg/mortbay/servlet/CGI$1;->val$outToCgi:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
