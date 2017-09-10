.class Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "ProgressLayoutViewHolder.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 12
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;"
    const/4 v7, 0x0

    .line 54
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getStep()D

    move-result-wide v8

    .line 56
    .local v8, "step":D
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getValueFromSlider(I)D

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    .line 57
    invoke-static {v4}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getUnit()Lcom/parrot/freeflight/util/ui/Unit;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v5}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getUnitAsString()Ljava/lang/String;

    move-result-object v5

    double-to-int v6, v8

    int-to-double v10, v6

    cmpl-double v6, v8, v10

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 56
    :goto_0
    invoke-static/range {v1 .. v6}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V

    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getInterpretedValue(D)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "interpretedValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 60
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    .end local v0    # "interpretedValue":Ljava/lang/String;
    .end local v8    # "step":D
    :cond_0
    :goto_1
    return-void

    .restart local v8    # "step":D
    :cond_1
    move v6, v7

    .line 57
    goto :goto_0

    .line 63
    .restart local v0    # "interpretedValue":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;"
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 75
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method
