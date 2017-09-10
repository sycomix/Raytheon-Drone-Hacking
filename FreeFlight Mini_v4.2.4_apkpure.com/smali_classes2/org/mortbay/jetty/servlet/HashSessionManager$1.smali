.class Lorg/mortbay/jetty/servlet/HashSessionManager$1;
.super Ljava/util/TimerTask;
.source "HashSessionManager.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$1;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$1;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->saveSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
