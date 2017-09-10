.class Lorg/mortbay/jetty/servlet/HashSessionManager$2;
.super Ljava/util/TimerTask;
.source "HashSessionManager.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$2;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$2;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->access$000(Lorg/mortbay/jetty/servlet/HashSessionManager;)V

    .line 220
    return-void
.end method
