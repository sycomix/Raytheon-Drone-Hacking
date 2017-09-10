.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosUIController;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 961
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 962
    .local v0, "flyingDuration":J
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2900(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, "timeString":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 966
    return-void

    .line 964
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
