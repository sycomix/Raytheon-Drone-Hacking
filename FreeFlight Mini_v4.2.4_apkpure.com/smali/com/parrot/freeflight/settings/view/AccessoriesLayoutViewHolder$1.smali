.class Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;
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
    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;Z)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->access$002(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;I)I

    .line 57
    :cond_0
    return-void
.end method
