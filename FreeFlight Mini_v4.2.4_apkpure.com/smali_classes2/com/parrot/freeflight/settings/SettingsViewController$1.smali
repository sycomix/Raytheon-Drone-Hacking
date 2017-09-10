.class Lcom/parrot/freeflight/settings/SettingsViewController$1;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/SettingsViewController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/settings/model/SettingsCategory;Lcom/parrot/freeflight/settings/ISettingsBuilder;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ListView;Landroid/support/v7/widget/RecyclerView;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

.field final synthetic val$fadeInAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/SettingsViewController;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 69
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$1;, "Lcom/parrot/freeflight/settings/SettingsViewController$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    iput-object p2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->val$fadeInAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$1;, "Lcom/parrot/freeflight/settings/SettingsViewController$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 72
    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$000(Lcom/parrot/freeflight/settings/SettingsViewController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2, p3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$102(Lcom/parrot/freeflight/settings/SettingsViewController;I)I

    .line 74
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$200(Lcom/parrot/freeflight/settings/SettingsViewController;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 76
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$300(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 77
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$202(Lcom/parrot/freeflight/settings/SettingsViewController;I)I

    .line 78
    invoke-virtual {p2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 79
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$400(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->setSelection(I)V

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$500(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$000(Lcom/parrot/freeflight/settings/SettingsViewController;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 82
    .local v0, "settingsCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$600(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$700(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/util/List;

    .line 83
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$800(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$800(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->val$fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$900(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->needShowResetButton()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$1000(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    .line 87
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/SettingsViewController;->update()V

    .line 90
    .end local v0    # "settingsCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    :cond_0
    return-void

    .line 85
    .restart local v0    # "settingsCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method
