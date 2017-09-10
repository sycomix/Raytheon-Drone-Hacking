.class Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;
.super Ljava/lang/Object;
.source "DefaultCredentialProvider.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;
    }
.end annotation


# static fields
.field static final APP_ENGINE_CREDENTIAL_CLASS:Ljava/lang/String; = "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper"

.field static final CLOUDSDK_CONFIG_DIRECTORY:Ljava/lang/String; = "gcloud"

.field static final CREDENTIAL_ENV_VAR:Ljava/lang/String; = "GOOGLE_APPLICATION_CREDENTIALS"

.field static final HELP_PERMALINK:Ljava/lang/String; = "https://developers.google.com/accounts/docs/application-default-credentials"

.field static final WELL_KNOWN_CREDENTIALS_FILE:Ljava/lang/String; = "application_default_credentials.json"


# instance fields
.field private cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

.field private checkedAppEngine:Z

.field private checkedComputeEngine:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 63
    iput-boolean v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedAppEngine:Z

    .line 64
    iput-boolean v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedComputeEngine:Z

    .line 66
    return-void
.end method

.method private final getDefaultCredentialUnsynchronized(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 12
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    const-string v7, "GOOGLE_APPLICATION_CREDENTIALS"

    invoke-virtual {p0, v7}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "credentialsPath":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 108
    const/4 v3, 0x0

    .line 110
    .local v3, "credentialsStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "credentialsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "File does not exist."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v1    # "credentialsFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 121
    .local v5, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Error reading credential file from environment variable %s, value \'%s\': %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "GOOGLE_APPLICATION_CREDENTIALS"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v7

    .line 115
    .restart local v1    # "credentialsFile":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .local v4, "credentialsStream":Ljava/io/InputStream;
    :try_start_3
    invoke-static {v4, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/AccessControlException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 127
    if-eqz v4, :cond_3

    .line 128
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 134
    .end local v1    # "credentialsFile":Ljava/io/File;
    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 135
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getWellKnownCredentialsFile()Ljava/io/File;

    move-result-object v6

    .line 137
    .local v6, "wellKnownFileLocation":Ljava/io/File;
    :try_start_4
    invoke-virtual {p0, v6}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->fileExists(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/security/AccessControlException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    if-eqz v7, :cond_4

    .line 138
    const/4 v3, 0x0

    .line 140
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :try_start_6
    invoke-static {v4, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 147
    if-eqz v4, :cond_4

    .line 148
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/security/AccessControlException; {:try_start_7 .. :try_end_7} :catch_3

    .line 158
    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .end local v6    # "wellKnownFileLocation":Ljava/io/File;
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->tryGetAppEngineCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 163
    :cond_5
    if-nez v0, :cond_6

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->tryGetComputeCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 166
    :cond_6
    return-object v0

    .line 124
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 127
    :goto_4
    if-eqz v3, :cond_3

    .line 128
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 142
    .restart local v6    # "wellKnownFileLocation":Ljava/io/File;
    :catch_2
    move-exception v5

    .line 143
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Error reading credential file from location %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 147
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :goto_6
    if-eqz v3, :cond_7

    .line 148
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v7
    :try_end_9
    .catch Ljava/security/AccessControlException; {:try_start_9 .. :try_end_9} :catch_3

    .line 152
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    goto :goto_3

    .line 147
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_6

    .line 142
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_5

    .line 127
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .end local v6    # "wellKnownFileLocation":Ljava/io/File;
    .restart local v1    # "credentialsFile":Ljava/io/File;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v7

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_1

    .line 124
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_4

    .line 117
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method private final getWellKnownCredentialsFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "cloudConfigPath":Ljava/io/File;
    const-string v5, "os.name"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "os":Ljava/lang/String;
    const-string v5, "windows"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v5, "APPDATA"

    invoke-virtual {p0, v5}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "appDataPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "cloudConfigPath":Ljava/io/File;
    const-string v5, "gcloud"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .end local v0    # "appDataPath":Ljava/io/File;
    .restart local v1    # "cloudConfigPath":Ljava/io/File;
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v5, "application_default_credentials.json"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v3, "credentialFilePath":Ljava/io/File;
    return-object v3

    .line 176
    .end local v3    # "credentialFilePath":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v5, "user.home"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".config"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v2, "configPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "cloudConfigPath":Ljava/io/File;
    const-string v5, "gcloud"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "cloudConfigPath":Ljava/io/File;
    goto :goto_0
.end method

.method private runningOnAppEngine()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 212
    const/4 v7, 0x0

    .line 214
    .local v7, "systemPropertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v11, "com.google.appengine.api.utils.SystemProperty"

    invoke-virtual {p0, v11}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 219
    const/4 v0, 0x0

    .line 222
    .local v0, "cause":Ljava/lang/Exception;
    :try_start_1
    const-string v11, "environment"

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 223
    .local v1, "environmentField":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 224
    .local v3, "environmentValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 225
    .local v2, "environmentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "value"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 226
    .local v8, "valueMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    .line 227
    .local v4, "environmentValueValue":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v1    # "environmentField":Ljava/lang/reflect/Field;
    .end local v2    # "environmentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "environmentValue":Ljava/lang/Object;
    .end local v4    # "environmentValueValue":Ljava/lang/Object;
    .end local v8    # "valueMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v9

    .line 215
    :catch_0
    move-exception v6

    .local v6, "expected":Ljava/lang/ClassNotFoundException;
    move v9, v10

    .line 217
    goto :goto_0

    .end local v6    # "expected":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cause":Ljava/lang/Exception;
    .restart local v1    # "environmentField":Ljava/lang/reflect/Field;
    .restart local v2    # "environmentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "environmentValue":Ljava/lang/Object;
    .restart local v4    # "environmentValueValue":Ljava/lang/Object;
    .restart local v8    # "valueMethod":Ljava/lang/reflect/Method;
    :cond_0
    move v9, v10

    .line 227
    goto :goto_0

    .line 228
    .end local v1    # "environmentField":Ljava/lang/reflect/Field;
    .end local v2    # "environmentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "environmentValue":Ljava/lang/Object;
    .end local v4    # "environmentValueValue":Ljava/lang/Object;
    .end local v8    # "valueMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 229
    .local v5, "exception":Ljava/lang/NoSuchFieldException;
    move-object v0, v5

    .line 241
    .end local v5    # "exception":Ljava/lang/NoSuchFieldException;
    :goto_1
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Unexpcted error trying to determine if runnning on Google App Engine: %s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v10

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/lang/RuntimeException;

    throw v9

    .line 230
    :catch_2
    move-exception v5

    .line 231
    .local v5, "exception":Ljava/lang/SecurityException;
    move-object v0, v5

    .line 240
    goto :goto_1

    .line 232
    .end local v5    # "exception":Ljava/lang/SecurityException;
    :catch_3
    move-exception v5

    .line 233
    .local v5, "exception":Ljava/lang/IllegalArgumentException;
    move-object v0, v5

    .line 240
    goto :goto_1

    .line 234
    .end local v5    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v5

    .line 235
    .local v5, "exception":Ljava/lang/IllegalAccessException;
    move-object v0, v5

    .line 240
    goto :goto_1

    .line 236
    .end local v5    # "exception":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v5

    .line 237
    .local v5, "exception":Ljava/lang/NoSuchMethodException;
    move-object v0, v5

    .line 240
    goto :goto_1

    .line 238
    .end local v5    # "exception":Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v5

    .line 239
    .local v5, "exception":Ljava/lang/reflect/InvocationTargetException;
    move-object v0, v5

    goto :goto_1
.end method

.method private final tryGetAppEngineCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 10
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 249
    iget-boolean v6, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedAppEngine:Z

    if-eqz v6, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v5

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->runningOnAppEngine()Z

    move-result v4

    .line 253
    .local v4, "onAppEngine":Z
    iput-boolean v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedAppEngine:Z

    .line 254
    if-eqz v4, :cond_0

    .line 257
    const/4 v3, 0x0

    .line 259
    .local v3, "innerException":Ljava/lang/Exception;
    :try_start_0
    const-string v5, "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper"

    invoke-virtual {p0, v5}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 260
    .local v1, "credentialClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/google/api/client/http/HttpTransport;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/google/api/client/json/JsonFactory;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 262
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 263
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "credentialClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    move-object v3, v2

    .line 274
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Application Default Credentials failed to create the Google App Engine service account credentials class %s. Check that the component \'google-api-client-appengine\' is deployed."

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v3}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    throw v5

    .line 265
    :catch_1
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    move-object v3, v2

    .line 273
    goto :goto_1

    .line 267
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/InstantiationException;
    move-object v3, v2

    .line 273
    goto :goto_1

    .line 269
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v3, v2

    .line 273
    goto :goto_1

    .line 271
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v2

    goto :goto_1
.end method

.method private final tryGetComputeCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 3
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedComputeEngine:Z

    if-eqz v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-object v1

    .line 287
    :cond_1
    invoke-static {p1}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->runningOnComputeEngine(Lcom/google/api/client/http/HttpTransport;)Z

    move-result v0

    .line 288
    .local v0, "runningOnComputeEngine":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedComputeEngine:Z

    .line 289
    if-eqz v0, :cond_0

    .line 290
    new-instance v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;

    invoke-direct {v1, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    goto :goto_0
.end method


# virtual methods
.method fileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final getDefaultCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 5
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getDefaultCredentialUnsynchronized(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    monitor-exit p0

    return-object v0

    .line 91
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The Application Default Credentials are not available. They are available if running in Google Compute Engine. Otherwise, the environment variable %s must be defined pointing to a file defining the credentials. See %s for more information."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GOOGLE_APPLICATION_CREDENTIALS"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "https://developers.google.com/accounts/docs/application-default-credentials"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getEnv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
