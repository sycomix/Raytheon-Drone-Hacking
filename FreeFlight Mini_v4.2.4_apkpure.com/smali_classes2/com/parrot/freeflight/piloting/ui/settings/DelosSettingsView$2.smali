.class Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;
.super Ljava/lang/Object;
.source "DelosSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->initController(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

.field final synthetic val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

.field final synthetic val$model:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneSettingsReset()V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->reset()V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->reset()V

    .line 101
    return-void
.end method
