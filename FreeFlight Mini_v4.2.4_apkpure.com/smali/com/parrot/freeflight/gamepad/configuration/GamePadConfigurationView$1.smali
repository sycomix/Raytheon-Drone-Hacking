.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;
.super Ljava/lang/Object;
.source "GamePadConfigurationView.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMappingChange(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 2
    .param p1, "mapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->setContent(Ljava/util/List;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onMappingUnsupported()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
