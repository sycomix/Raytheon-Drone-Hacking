.class Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;
.super Ljava/util/TimerTask;
.source "MotionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/motion/MotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalculateFusedOrientationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    .line 729
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    if-nez v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    new-array v2, v8, [F

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$002(Lcom/parrot/freeflight/piloting/motion/MotionManager;[F)[F

    .line 733
    :cond_0
    const v0, 0x3e4ccccc    # 0.19999999f

    .line 735
    .local v0, "oneMinusCoeff":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$100(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$200(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$100(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v2

    aget v2, v2, v7

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$200(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v3

    aget v3, v3, v7

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 738
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$100(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v2

    aget v2, v2, v5

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$200(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v3

    aget v3, v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 740
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$100(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v2

    aget v2, v2, v6

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$200(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v3

    aget v3, v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 744
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$400(Lcom/parrot/freeflight/piloting/motion/MotionManager;[F)[F

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$302(Lcom/parrot/freeflight/piloting/motion/MotionManager;[F)[F

    .line 745
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$500(Lcom/parrot/freeflight/piloting/motion/MotionManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$300(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$600(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v6}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$300(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v6

    array-length v6, v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$100(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v2

    invoke-static {v1, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$700(Lcom/parrot/freeflight/piloting/motion/MotionManager;)Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$800(Lcom/parrot/freeflight/piloting/motion/MotionManager;)F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$300(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->access$900(Lcom/parrot/freeflight/piloting/motion/MotionManager;[FF[F)V

    .line 755
    :cond_1
    return-void

    .line 747
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
