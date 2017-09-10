.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;
.super Ljava/lang/Object;
.source "GamePadConfigurationView.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$StateListener;


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
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 10
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->hasBatteryLevel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v0

    .line 97
    .local v0, "batteryLevel":I
    if-ltz v0, :cond_3

    .line 98
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$300(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "%d %%"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$300(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$400(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    .end local v0    # "batteryLevel":I
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 111
    .local v4, "oldImageId":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getMappingImageId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 112
    .local v3, "newImageId":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :cond_1
    instance-of v5, p1, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 119
    check-cast v5, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v6}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;->getPreferences(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;

    move-result-object v2

    .line 120
    .local v2, "gamePadRemotePreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->getMapping()Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v1

    .line 121
    .local v1, "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    if-eqz v1, :cond_2

    .line 122
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v5

    if-nez v5, :cond_5

    .line 123
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    new-instance v6, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    invoke-direct {v6, p1, v1, v2}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;-><init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;)V

    invoke-static {v5, v6}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$702(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    .line 124
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v6}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$800(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->registerListener(Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;)V

    .line 128
    :goto_2
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v6}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->setContent(Ljava/util/List;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 131
    .end local v1    # "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .end local v2    # "gamePadRemotePreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
    :cond_2
    return-void

    .line 100
    .end local v3    # "newImageId":Ljava/lang/Integer;
    .end local v4    # "oldImageId":Ljava/lang/Integer;
    .restart local v0    # "batteryLevel":I
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$300(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "batteryLevel":I
    :cond_4
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$300(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$400(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 126
    .restart local v1    # "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .restart local v2    # "gamePadRemotePreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
    .restart local v3    # "newImageId":Ljava/lang/Integer;
    .restart local v4    # "oldImageId":Ljava/lang/Integer;
    :cond_5
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->updateMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    goto :goto_2
.end method
