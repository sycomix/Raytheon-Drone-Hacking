.class Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;
.super Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;
.source "DelosSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->buildPilotingSettings(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

.field final synthetic val$editable:Z

.field final synthetic val$model:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "leftStateName"    # Ljava/lang/String;
    .param p4, "rightStateName"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

    iput-object p5, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    iput-boolean p6, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->val$editable:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 121
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->readValue(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    return-object v0
.end method

.method public sendValue(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->setAccessory(I)V

    .line 131
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->sendValue(Ljava/lang/Integer;)V

    return-void
.end method

.method protected updateVisibility()V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->val$editable:Z

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;->setEditable(Z)V

    .line 136
    return-void
.end method
