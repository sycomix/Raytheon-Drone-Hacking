.class Lorg/mortbay/util/RolloverFileOutputStream$RollTask;
.super Ljava/util/TimerTask;
.source "RolloverFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/RolloverFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollTask"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/util/RolloverFileOutputStream;


# direct methods
.method private constructor <init>(Lorg/mortbay/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/util/RolloverFileOutputStream;Lorg/mortbay/util/RolloverFileOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/util/RolloverFileOutputStream;
    .param p2, "x1"    # Lorg/mortbay/util/RolloverFileOutputStream$1;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;-><init>(Lorg/mortbay/util/RolloverFileOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-static {v1}, Lorg/mortbay/util/RolloverFileOutputStream;->access$100(Lorg/mortbay/util/RolloverFileOutputStream;)V

    .line 320
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-static {v1}, Lorg/mortbay/util/RolloverFileOutputStream;->access$200(Lorg/mortbay/util/RolloverFileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
