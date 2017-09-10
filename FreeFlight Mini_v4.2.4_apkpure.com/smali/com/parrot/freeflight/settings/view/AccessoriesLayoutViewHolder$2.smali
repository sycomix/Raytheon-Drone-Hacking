.class Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;
.super Ljava/lang/Object;
.source "AccessoriesLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;Z)V

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->getValue()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getSupportedAccessory()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$002(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;I)I

    .line 68
    :cond_0
    return-void
.end method
