.class Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;
.super Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;
.source "DelosSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->buildNetworkSettings(Lcom/parrot/freeflight/core/model/DelosModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

.field final synthetic val$model:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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
    .line 348
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;->readValue(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readValue(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/lang/String;
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
    .line 352
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;->sendValue(Ljava/lang/String;)V

    return-void
.end method

.method public sendValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->setName(Ljava/lang/String;)V

    .line 358
    return-void
.end method
