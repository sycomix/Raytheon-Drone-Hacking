.class Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;
.super Ljava/lang/Object;
.source "HydrofoilProgressBarViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 74
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;"
    if-nez p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/widget/Slider;->setSelected(Z)V

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method
