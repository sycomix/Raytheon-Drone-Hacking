.class Lcom/parrot/freeflight/settings/SettingsViewController$2;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 94
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$2;, "Lcom/parrot/freeflight/settings/SettingsViewController$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$2;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$2;, "Lcom/parrot/freeflight/settings/SettingsViewController$2;"
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 98
    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x60

    if-ne p2, v1, :cond_1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$2;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$1102(Lcom/parrot/freeflight/settings/SettingsViewController;Z)Z

    .line 100
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$2;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$500(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$2;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$500(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$2;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    .line 101
    invoke-static {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$500(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/settings/SettingsViewController$2;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    .line 102
    invoke-static {v4}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$500(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v4

    .line 100
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 106
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
