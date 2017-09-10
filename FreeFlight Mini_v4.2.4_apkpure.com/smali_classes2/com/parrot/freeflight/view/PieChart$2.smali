.class Lcom/parrot/freeflight/view/PieChart$2;
.super Ljava/lang/Object;
.source "PieChart.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/view/PieChart;->setAngle(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/view/PieChart;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/view/PieChart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/view/PieChart;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/view/PieChart$2;->this$0:Lcom/parrot/freeflight/view/PieChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart$2;->this$0:Lcom/parrot/freeflight/view/PieChart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/view/PieChart;->access$202(Lcom/parrot/freeflight/view/PieChart;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 128
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart$2;->this$0:Lcom/parrot/freeflight/view/PieChart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/view/PieChart;->access$102(Lcom/parrot/freeflight/view/PieChart;Z)Z

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart$2;->this$0:Lcom/parrot/freeflight/view/PieChart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/view/PieChart;->access$202(Lcom/parrot/freeflight/view/PieChart;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 123
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 117
    return-void
.end method
