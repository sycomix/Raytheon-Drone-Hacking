.class public Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;
.super Lorg/mortbay/thread/Timeout$Task;
.source "SelectChannelEndPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/nio/SelectChannelEndPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleTask"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/io/nio/SelectChannelEndPoint;


# direct methods
.method public constructor <init>(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;->this$0:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public expired()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;->this$0:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->idleExpired()V

    .line 490
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TimeoutTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;->this$0:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
