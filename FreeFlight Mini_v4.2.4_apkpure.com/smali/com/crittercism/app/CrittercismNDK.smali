.class public Lcom/crittercism/app/CrittercismNDK;
.super Ljava/lang/Object;


# static fields
.field private static final ASSET_SO_FILE_NAME:Ljava/lang/String; = "lib64libcrittercism-v3.crt"

.field private static final DST_SO_FILE_NAME:Ljava/lang/String; = "lib64libcrittercism-v3.so"

.field private static final LEGACY_SO_FILE_NAMES:[Ljava/lang/String;

.field private static final LIBRARY_NAME:Ljava/lang/String; = "64libcrittercism-v3"

.field private static isNdkInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    sput-boolean v2, Lcom/crittercism/app/CrittercismNDK;->isNdkInstalled:Z

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "libcrittercism-ndk.so"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "libcrittercism-v3.so"

    aput-object v2, v0, v1

    sput-object v0, Lcom/crittercism/app/CrittercismNDK;->LEGACY_SO_FILE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyLibFromAssets(Landroid/content/Context;Ljava/io/File;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installedLibFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 231
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyLibFromAssets: creating dir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyLibFromAssets: installing library into: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 239
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->getJarredLibFileStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .line 242
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 244
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    .line 245
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not install breakpad library: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    .line 256
    :goto_1
    return v0

    .line 248
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 249
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 250
    const-string v1, "copyLibFromAssets: successful"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static doNdkSharedLibrariesExist(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 191
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->getJarredLibFileStream(Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    const-string v2, "doNdkSharedLibrariesExist: "

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstalledLibraryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/com.crittercism/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lib64libcrittercism-v3.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getJarredLibFileStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v0, "armeabi"

    .line 207
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getJarredLibFileStream: os.arch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "v7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib64libcrittercism-v3.crt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJarredLibFileStream: openning input stream from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 211
    :cond_1
    const-string v2, "aarch64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const-string v0, "arm64-v8a"

    goto :goto_0
.end method

.method public static native installNdk(Ljava/lang/String;)Z
.end method

.method public static installNdkLib(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeDumpPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->doNdkSharedLibrariesExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->loadLibraryFromAssets(Landroid/content/Context;)Z

    move-result v0

    .line 123
    :goto_0
    if-nez v0, :cond_1

    .line 141
    :goto_1
    return-void

    .line 116
    :cond_0
    :try_start_0
    const-string v2, "64libcrittercism-v3"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/crittercism/app/CrittercismNDK;->installNdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/crittercism/app/CrittercismNDK;->isNdkInstalled:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 134
    :cond_2
    :try_start_2
    const-string v0, "Unable to initialize NDK crash reporting."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public static isNdkCrashReportingInstalled()Z
    .locals 1

    .prologue
    .line 260
    sget-boolean v0, Lcom/crittercism/app/CrittercismNDK;->isNdkInstalled:Z

    return v0
.end method

.method public static loadLibraryFromAssets(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 144
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "/com.crittercism/lib/"

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    new-instance v4, Ljava/io/File;

    const-string v0, "lib64libcrittercism-v3.so"

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    invoke-static {p0, v4}, Lcom/crittercism/app/CrittercismNDK;->copyLibFromAssets(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 177
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 154
    :goto_1
    sget-object v2, Lcom/crittercism/app/CrittercismNDK;->LEGACY_SO_FILE_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 155
    new-instance v5, Ljava/io/File;

    sget-object v2, Lcom/crittercism/app/CrittercismNDK;->LEGACY_SO_FILE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "deleting"

    .line 159
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "legacy lib: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_1
    const-string v2, "not found"

    goto :goto_2

    .line 169
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to install NDK library: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
