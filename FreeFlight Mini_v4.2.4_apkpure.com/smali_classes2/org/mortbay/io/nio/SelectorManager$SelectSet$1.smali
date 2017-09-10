.class Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$1:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

.field private final val$endpoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;


# direct methods
.method constructor <init>(Lorg/mortbay/io/nio/SelectorManager$SelectSet;Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;->this$1:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iput-object p2, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;->val$endpoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;->val$endpoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
