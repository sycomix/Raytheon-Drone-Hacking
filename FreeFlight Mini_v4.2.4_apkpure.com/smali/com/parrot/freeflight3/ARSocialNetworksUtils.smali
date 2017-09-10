.class public Lcom/parrot/freeflight3/ARSocialNetworksUtils;
.super Ljava/lang/Object;
.source "ARSocialNetworksUtils.java"


# static fields
.field private static final FACEBOOK_ACCOUNT_SHARE_PREF:Ljava/lang/String; = "FACEBOOK_ACCOUNT_SHARE_PREF"

.field public static final FULL_RES:Ljava/lang/String; = "/s0"

.field private static final GOOGLE_ACCOUNT_SHARE_PREF:Ljava/lang/String; = "GOOGLE_ACCOUNT_SHARE_PREF"

.field public static final SHARE_FACEBOOK:I = 0x2

.field public static final SHARE_PICASA:I = 0x1

.field public static final SHARE_YOUTUBE:I = 0x0

.field private static final SOCIAL_NETWORKS_SHARED_PREFS:Ljava/lang/String; = "SOCIAL_NETWORKS_SHARED_PREFS"

.field public static final THUMB_RES:Ljava/lang/String; = "/s256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forgetLogin(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediumType"    # I

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 120
    const-string v2, "SOCIAL_NETWORKS_SHARED_PREFS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 126
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "GOOGLE_ACCOUNT_SHARE_PREF"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-static {p0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->logoutAndForgetToken(Landroid/app/Activity;)V

    .line 132
    const-string v2, "FACEBOOK_ACCOUNT_SHARE_PREF"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAccountName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediumType"    # I

    .prologue
    const/4 v4, 0x0

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "accountName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 147
    const-string v2, "SOCIAL_NETWORKS_SHARED_PREFS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, "preferences":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 160
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v0

    .line 153
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "GOOGLE_ACCOUNT_SHARE_PREF"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    goto :goto_0

    .line 156
    :pswitch_1
    const-string v2, "FACEBOOK_ACCOUNT_SHARE_PREF"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPicasaImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 56
    move-object v4, p0

    .line 57
    .local v4, "picasaUrl":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "index":I
    if-eq v1, v9, :cond_0

    .line 60
    invoke-virtual {p0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "urlWithoutPhotoId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "photoId":Ljava/lang/String;
    const-string v5, ".*/s[0-9]+$"

    .line 64
    .local v5, "regex":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 66
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "lastSlashIdx":I
    if-eq v2, v9, :cond_0

    .line 69
    invoke-virtual {v6, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "urlWithoutPhotoIdAndRes":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "lastSlashIdx":I
    .end local v3    # "photoId":Ljava/lang/String;
    .end local v5    # "regex":Ljava/lang/String;
    .end local v6    # "urlWithoutPhotoId":Ljava/lang/String;
    .end local v7    # "urlWithoutPhotoIdAndRes":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 79
    .restart local v3    # "photoId":Ljava/lang/String;
    .restart local v5    # "regex":Ljava/lang/String;
    .restart local v6    # "urlWithoutPhotoId":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    move-object v2, p0

    .line 27
    .local v2, "thumbUrl":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 29
    const-string v3, "http://www.youtube.com"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://www.youtube.com"

    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://youtu.be"

    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://youtu.be"

    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    :cond_0
    const-string v3, "?v="

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "http://img.youtube.com/vi/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, "/0.jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .end local v0    # "index":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-object v2

    .line 48
    :cond_2
    const-string v3, "/s256"

    invoke-static {p0, v3}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->getPicasaImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static hasSavedLogin(Landroid/app/Activity;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediumType"    # I

    .prologue
    .line 165
    invoke-static {p0, p1}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->getAccountName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static storeAccountName(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mediumType"    # I

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 96
    const-string v2, "SOCIAL_NETWORKS_SHARED_PREFS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p2, :pswitch_data_0

    .line 112
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 103
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "GOOGLE_ACCOUNT_SHARE_PREF"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 106
    :pswitch_1
    const-string v2, "FACEBOOK_ACCOUNT_SHARE_PREF"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
