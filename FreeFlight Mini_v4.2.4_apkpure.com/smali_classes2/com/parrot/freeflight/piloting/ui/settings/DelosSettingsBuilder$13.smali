.class Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$13;
.super Lcom/parrot/freeflight/settings/model/TextSettingsEntry;
.source "DelosSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->buildInfosSettings()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/TextSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$13;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/settings/model/TextSettingsEntry;-><init>(Ljava/lang/String;)V

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
    .line 365
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$13;->readValue(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/lang/String;

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
    .line 369
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
