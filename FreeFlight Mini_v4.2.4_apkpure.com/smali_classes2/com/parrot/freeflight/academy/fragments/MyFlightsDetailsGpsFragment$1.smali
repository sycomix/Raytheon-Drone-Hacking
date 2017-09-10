.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;
.super Ljava/lang/Object;
.source "MyFlightsDetailsGpsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$000(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$102(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;Z)Z

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$200(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    .line 90
    return-void
.end method
