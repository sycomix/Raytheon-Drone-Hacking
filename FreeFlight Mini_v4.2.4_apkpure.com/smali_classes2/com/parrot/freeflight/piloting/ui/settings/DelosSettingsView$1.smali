.class Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$1;
.super Ljava/lang/Object;
.source "DelosSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;->onBackButtonClick()V

    .line 70
    :cond_0
    return-void
.end method
