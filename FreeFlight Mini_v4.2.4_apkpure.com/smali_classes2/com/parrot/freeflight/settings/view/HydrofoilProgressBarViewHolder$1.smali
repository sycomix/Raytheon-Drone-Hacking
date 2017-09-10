.class Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;
.super Ljava/lang/Object;
.source "HydrofoilProgressBarViewHolder.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 40
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 43
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getInterpretedValue(D)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "interpratedValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mValueTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v3}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getInterpretedValue(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .end local v0    # "interpratedValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 54
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;"
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 58
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method
