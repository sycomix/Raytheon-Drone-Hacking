.class Lorg/mortbay/util/Scanner$1;
.super Ljava/util/TimerTask;
.source "Scanner.java"


# instance fields
.field private final this$0:Lorg/mortbay/util/Scanner;


# direct methods
.method constructor <init>(Lorg/mortbay/util/Scanner;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lorg/mortbay/util/Scanner$1;->this$0:Lorg/mortbay/util/Scanner;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/mortbay/util/Scanner$1;->this$0:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->scan()V

    return-void
.end method
