import * as fspath from 'path';
import * as fs from 'fs';
import * as os from 'os';

import { AbsPath, opeParam, RelPath } from '../global';

/**
 * @param path
 * @returns 
 */
export function toSlash(path: AbsPath | RelPath): AbsPath | RelPath {
    return path.replace(/\\/g,"\/");
}

/**
 * resolve an absolute path of a relative path in an absolute path 
 * @param curPath current path of the file 
 * @param relPath relative path in curPath
 * @returns 
 */
export function rel2abs(curPath: AbsPath, relPath: RelPath): AbsPath {
    if (fspath.isAbsolute(relPath)) {
        return relPath;
    }
    const curDirPath = fspath.dirname(curPath);
    const absPath = fspath.resolve(curDirPath, relPath);
    return toSlash(absPath);
}


export function relative(from: AbsPath, to: AbsPath): RelPath {
    let rel = fspath.relative(from, to);
    if (!rel.startsWith('.') && !rel.startsWith('./')) {
        rel = './' + rel;
    }
    return toSlash(rel);
}

/**
 * cat paths with '/'
 * @param paths 
 * @returns 
 */
export function join(...paths: string[]): AbsPath | RelPath {
    return paths.join('/');
}


/**
 * resolve paths with '/'
 * @param paths 
 * @returns 
 */
export function resolve(...paths: string[]): AbsPath | RelPath {
    const absPath = fspath.resolve(...paths);
    return toSlash(absPath);
}


/**
 * get the extname of a path
 * @param path 
 * @param reserveSplitor 
 * @returns reserveSplitor=true  src/file.txt -> .txt
 *          reserveSplitor=false src/file.txt -> txt
 */
export function extname(path: AbsPath | RelPath, reserveSplitor: boolean = true): string {
    let ext = fspath.extname(path).toLowerCase();
    if (!reserveSplitor && ext.startsWith('.')) {
        ext = ext.substring(1);
    }
    return ext;
}

export function basename(path: AbsPath | RelPath) {
    return fspath.basename(path, extname(path, true));
}


/**
 * get the file name of a path
 * @param path 
 * @returns src/file.txt -> file
 */
export function filename(path: AbsPath | RelPath): string {
    const ext = extname(path, true);
    return fspath.basename(path, ext);
}

export function exist(path: AbsPath | undefined): boolean {
    if (!path) {
        return false;
    }
    return fs.existsSync(path);
}

export function toEscapePath(path: AbsPath): AbsPath {
    if (os.platform() === 'win32') {
        return path.startsWith('/') ? toSlash(path.slice(1)) : toSlash(path);
    } else {
        return toSlash(path);
    }
}

export function toPureRelativePath(path: RelPath): RelPath {
        
    if (path.startsWith('./') || path.startsWith('.\\')) {
        return path.slice(2);
    }
    return path;
}
